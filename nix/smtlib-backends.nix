{
  "0.2" = {
    sha256 = "b3dd6de89f611de08e41b90377f85ef0355117e49710c6fbb4fa9f911caae75c";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-0.2-r0-01834cbfa78a430c94189f1105f49dcf8b2f2bb75f3446f10b3de123816b5764.nix;
        revNum = 0;
        sha256 = "01834cbfa78a430c94189f1105f49dcf8b2f2bb75f3446f10b3de123816b5764";
        };
      r1 = {
        nix = import ../hackage/smtlib-backends-0.2-r1-8135796ab4cd03c6511dc88d02f152b8dfe32c31d2c31c4867b4d06d03b13899.nix;
        revNum = 1;
        sha256 = "8135796ab4cd03c6511dc88d02f152b8dfe32c31d2c31c4867b4d06d03b13899";
        };
      default = "r1";
      };
    };
  }