{
  "0.12" = {
    sha256 = "8aeb33d03d8c789a8424d0d2beea7d3401b56c34adec38e7418701fe5932d4bd";
    revisions = {
      r0 = {
        nix = import ../hackage/hspear-0.12-r0-966b1f552faef6f9a53107c6749448437e04daf299917cb5cad7f4d7a97e3686.nix;
        revNum = 0;
        sha256 = "966b1f552faef6f9a53107c6749448437e04daf299917cb5cad7f4d7a97e3686";
        };
      r1 = {
        nix = import ../hackage/hspear-0.12-r1-3c0a497333a4359e7a6cd456c3d75d90975391c841dd5a10fe0556d980c3f081.nix;
        revNum = 1;
        sha256 = "3c0a497333a4359e7a6cd456c3d75d90975391c841dd5a10fe0556d980c3f081";
        };
      default = "r1";
      };
    };
  "0.14" = {
    sha256 = "30c41dcd085dc934db18dc2a2f6ba7c3f68c7504df9d805a6e0eeb776bda6ac0";
    revisions = {
      r0 = {
        nix = import ../hackage/hspear-0.14-r0-066afc4f39c538a14b5cff9f10af8c236afde19ab762f3b3b69b130f2fb33b04.nix;
        revNum = 0;
        sha256 = "066afc4f39c538a14b5cff9f10af8c236afde19ab762f3b3b69b130f2fb33b04";
        };
      r1 = {
        nix = import ../hackage/hspear-0.14-r1-e2907c6ef940fa2a14691bde4f26fbf83bdfafd83126650bc9fd97d667a5f2c6.nix;
        revNum = 1;
        sha256 = "e2907c6ef940fa2a14691bde4f26fbf83bdfafd83126650bc9fd97d667a5f2c6";
        };
      default = "r1";
      };
    };
  }