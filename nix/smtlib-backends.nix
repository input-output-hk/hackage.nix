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
  "0.3" = {
    sha256 = "1c83fd19988b6b4d69b405afe1721da6ffeb3ee091dd240a3fbb01fc118bfe8e";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-0.3-r0-917d88540a9ede7beedbe2ed13b492acddbce394d30ccf5d0ef4f4fba9aa2c12.nix;
        revNum = 0;
        sha256 = "917d88540a9ede7beedbe2ed13b492acddbce394d30ccf5d0ef4f4fba9aa2c12";
      };
      r1 = {
        nix = import ../hackage/smtlib-backends-0.3-r1-69977f97a8db2c11e97bde92fff7e86e793c1fb23827b284bf89938ee463fbf0.nix;
        revNum = 1;
        sha256 = "69977f97a8db2c11e97bde92fff7e86e793c1fb23827b284bf89938ee463fbf0";
      };
      r2 = {
        nix = import ../hackage/smtlib-backends-0.3-r2-a947aead99f6a314833bddca9b502d5faea8d3bd2fc76ffb53c34d5c5b7557bc.nix;
        revNum = 2;
        sha256 = "a947aead99f6a314833bddca9b502d5faea8d3bd2fc76ffb53c34d5c5b7557bc";
      };
      default = "r2";
    };
  };
  "0.4" = {
    sha256 = "af83c39e6c8d04e48ea6e9955ebd40c56297861938737ae30f174b1ece8bc29a";
    revisions = {
      r0 = {
        nix = import ../hackage/smtlib-backends-0.4-r0-6028af9a5f9120b5176a22f136132cb91d7cdfcde34c2e1cdaf270f2d374de47.nix;
        revNum = 0;
        sha256 = "6028af9a5f9120b5176a22f136132cb91d7cdfcde34c2e1cdaf270f2d374de47";
      };
      r1 = {
        nix = import ../hackage/smtlib-backends-0.4-r1-a7ae228f4464727a8c725341cf9b6690577f5289c80a33e8960264e296fb9a47.nix;
        revNum = 1;
        sha256 = "a7ae228f4464727a8c725341cf9b6690577f5289c80a33e8960264e296fb9a47";
      };
      default = "r1";
    };
  };
}