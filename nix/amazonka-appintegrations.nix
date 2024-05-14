{
  "2.0" = {
    sha256 = "5e3eb3adf402f773fe5bffecc807e464fa599b9cedb03880ef687429ed29207a";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-appintegrations-2.0-r0-e6689168021811f9ae7381d42b5705163dd7848b471795668420749f66e51fbc.nix;
        revNum = 0;
        sha256 = "e6689168021811f9ae7381d42b5705163dd7848b471795668420749f66e51fbc";
      };
      r1 = {
        nix = import ../hackage/amazonka-appintegrations-2.0-r1-3fe227039ad3d900adff8fc3a805956670b483197e9620f9d22ae648a474c773.nix;
        revNum = 1;
        sha256 = "3fe227039ad3d900adff8fc3a805956670b483197e9620f9d22ae648a474c773";
      };
      default = "r1";
    };
  };
}