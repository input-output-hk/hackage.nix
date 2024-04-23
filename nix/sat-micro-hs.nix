{
  "0.1" = {
    sha256 = "b7ed7a6761d22d23e91c11e4493ece81442d763503ed29d78974e4817af10a25";
    revisions = {
      r0 = {
        nix = import ../hackage/sat-micro-hs-0.1-r0-edcf063c023adbe42bafa8bdb06d20e297b4bb537e102394645fb81c299e4008.nix;
        revNum = 0;
        sha256 = "edcf063c023adbe42bafa8bdb06d20e297b4bb537e102394645fb81c299e4008";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "842d181af744d36785481fd63e0f63c07ad77cbab2e7f10a0d17e6e4276309f0";
    revisions = {
      r0 = {
        nix = import ../hackage/sat-micro-hs-0.1.1-r0-20fbc1fc4202fc1cd6288c2f841856b2b7020d77f46796217a24fae04a17678e.nix;
        revNum = 0;
        sha256 = "20fbc1fc4202fc1cd6288c2f841856b2b7020d77f46796217a24fae04a17678e";
      };
      default = "r0";
    };
  };
}