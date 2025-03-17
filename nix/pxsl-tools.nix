{
  "1.0.1" = {
    sha256 = "dc311c012b0b6b482cdd26337f44cff8259269d3dd83f482ab4049965fa085e0";
    revisions = {
      r0 = {
        nix = import ../hackage/pxsl-tools-1.0.1-r0-a44a7248539c58d15a1cd880e2e7a6c50f1a982ca4549631b9fbcb59db5c8998.nix;
        revNum = 0;
        sha256 = "a44a7248539c58d15a1cd880e2e7a6c50f1a982ca4549631b9fbcb59db5c8998";
      };
      r1 = {
        nix = import ../hackage/pxsl-tools-1.0.1-r1-1fbd4d6420f29a510ed0ee53cfa9eaa11cd3d494c2460f8fd45d387c730e6423.nix;
        revNum = 1;
        sha256 = "1fbd4d6420f29a510ed0ee53cfa9eaa11cd3d494c2460f8fd45d387c730e6423";
      };
      default = "r1";
    };
  };
}