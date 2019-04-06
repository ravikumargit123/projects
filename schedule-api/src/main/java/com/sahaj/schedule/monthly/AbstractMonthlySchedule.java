package com.sahaj.schedule.monthly;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.Optional;

import com.sahaj.schedule.AbstractSchedule;

public abstract class AbstractMonthlySchedule extends AbstractSchedule {

    protected final int fixedDateOfMonth;

    public AbstractMonthlySchedule(String eventName, LocalDate startDate, LocalTime scheduleTime, int dateOfMonth) {
        super(eventName, startDate, scheduleTime);
        this.fixedDateOfMonth = dateOfMonth;
    }

    @Override
    protected Optional<LocalDateTime> getFirstOccurrenceFrom(LocalDateTime fromDate) {
        if (fromDate.isBefore(scheduleStartDateTime)) {
            return getFirstOccurrenceFrom(scheduleStartDateTime);
        }
        if (fromDate.getDayOfMonth() < fixedDateOfMonth) {
            final int validDayOfMonth = Math.min(fixedDateOfMonth, fromDate.toLocalDate().lengthOfMonth());
            return Optional.of(fromDate.toLocalDate().withDayOfMonth(validDayOfMonth).atTime(scheduleTime));
        } else if (fromDate.getDayOfMonth() == fixedDateOfMonth) {
            if (fromDate.toLocalTime().isBefore(scheduleTime)
                || fromDate.toLocalTime().equals(scheduleTime)) {
                return Optional.of(fromDate.toLocalDate().atTime(scheduleTime));
            }
        }
        return getNextOccurrence(fromDate);
    }

    private Optional<LocalDateTime> getNextOccurrence(LocalDateTime fromDate) {
        LocalDate next = fromDate.toLocalDate().plusMonths(1);
        final int validDayOfMonth = Math.min(fixedDateOfMonth, next.lengthOfMonth());
        return Optional.of(next.withDayOfMonth(validDayOfMonth).atTime(scheduleTime));
    }

    protected boolean isDateOfMonthSameAsFixedDay(LocalDate fromDate) {
        return fixedDateOfMonth == fromDate.getDayOfMonth();
    }

}
