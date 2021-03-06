package com.tws.hunt.stages;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Component;

import com.tws.hunt.stages.result.HuntGameResult;
import com.tws.hunt.stages.result.SimpleCount;

@Component
public class ProductCountStage extends BaseStage {

    protected HuntGameResult getCount(JSONArray result) {
        return new SimpleCount(result.size());
    }
}
