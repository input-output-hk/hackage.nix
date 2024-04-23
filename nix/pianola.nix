{
  "0.1.0" = {
    sha256 = "170ec1c0622e5ec728491d8ad49ce00f58934a72d1558a6b3f1f0ee881edef78";
    revisions = {
      r0 = {
        nix = import ../hackage/pianola-0.1.0-r0-45d0353abb153018d2007c82ec3870f2cc58229836b8f03dee33b25a9d642df0.nix;
        revNum = 0;
        sha256 = "45d0353abb153018d2007c82ec3870f2cc58229836b8f03dee33b25a9d642df0";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "5821a3cfa64a7e9c984aa5a90bfad842097e88cb85c4e80b4d23f4a93d18c60b";
    revisions = {
      r0 = {
        nix = import ../hackage/pianola-0.1.1-r0-5ae0b8038f2d1a5810366506a591002003299c2213ee788d833a337446c89804.nix;
        revNum = 0;
        sha256 = "5ae0b8038f2d1a5810366506a591002003299c2213ee788d833a337446c89804";
      };
      default = "r0";
    };
  };
}