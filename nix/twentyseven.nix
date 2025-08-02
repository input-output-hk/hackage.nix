{
  "0.0.0" = {
    sha256 = "471690467742286cc9e4eb744b06d2a298a9c770fdb8ac0c816774d4c0b70133";
    revisions = {
      r0 = {
        nix = import ../hackage/twentyseven-0.0.0-r0-bd1ba5e04b717c5b95a236c72af08ce7614bec1c727515578e21efe0119700b1.nix;
        revNum = 0;
        sha256 = "bd1ba5e04b717c5b95a236c72af08ce7614bec1c727515578e21efe0119700b1";
      };
      r1 = {
        nix = import ../hackage/twentyseven-0.0.0-r1-32b1d53bc3a5a56998f35452cbcdc9d00db7e4848e50ebd8fec2607d2243f147.nix;
        revNum = 1;
        sha256 = "32b1d53bc3a5a56998f35452cbcdc9d00db7e4848e50ebd8fec2607d2243f147";
      };
      default = "r1";
    };
  };
  "1.0.0" = {
    sha256 = "f4ed7519c32500867bfa4be4ab7e966388c47327284584dc5d4caa68b4493548";
    revisions = {
      r0 = {
        nix = import ../hackage/twentyseven-1.0.0-r0-0247861dd1611b14edceae01992fcb3575cb80f8aada3df9bc4fd474f9f3e9db.nix;
        revNum = 0;
        sha256 = "0247861dd1611b14edceae01992fcb3575cb80f8aada3df9bc4fd474f9f3e9db";
      };
      default = "r0";
    };
  };
}