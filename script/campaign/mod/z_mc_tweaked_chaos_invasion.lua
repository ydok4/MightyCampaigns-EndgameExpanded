CVC = {};
_G.CVC = CVC;

-- Models
require 'script/_lib/core/model/ChaosVassalisationController';
require 'script/_lib/core/model/Logger';

function z_mc_tweaked_chaos_invasion()
    local enableLogging = true;
    out("CVC: Main mod function");
    CVC = ChaosVassalisationController:new({});
    CVC:Initialise(core, enableLogging);
    CVC.Logger:Log("Initialised");
    CVC.Logger:Log_Finished();
    _G.CVC = CVC;
    out("CVC: Finished setup");
end