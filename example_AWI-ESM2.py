#!/usr/bin/env python
# coding: utf-8

# # Setup

from cmpitool import (cmpitool ,cmpisetup)

variable, region, climate_model, siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst, thetao, so = cmpisetup()
model_path='/albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/postprocessed/piControl/'
models=[    
        climate_model(name='AWI-ESM2',    variables=[siconc, tas, clt, pr, rlut, uas, vas, ua, zg, zos, tos, mlotst]), #, thetao, so]),
    ]

cmpitool(model_path, models, verbose=True)

