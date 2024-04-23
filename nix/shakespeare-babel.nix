{
  "0.1.0.0" = {
    sha256 = "a072ca9cf9397f23b74920d395d880108a7268d63a93da3086ed5a40ee0c2035";
    revisions = {
      r0 = {
        nix = import ../hackage/shakespeare-babel-0.1.0.0-r0-ac3a970ee0cc3f85ccd783368f8cb855837f74fdee2816197905724a89dd1eb0.nix;
        revNum = 0;
        sha256 = "ac3a970ee0cc3f85ccd783368f8cb855837f74fdee2816197905724a89dd1eb0";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "cf3f66f382407464059f7091d3a3c83c61ab32e0fcee9c6dd70d38623bce6bdf";
    revisions = {
      r0 = {
        nix = import ../hackage/shakespeare-babel-0.2.0.0-r0-ec8aacaa2f6bbed13dbfd93e57e5f4d489254038a0ac7ec9a9b51e0bb75c2edb.nix;
        revNum = 0;
        sha256 = "ec8aacaa2f6bbed13dbfd93e57e5f4d489254038a0ac7ec9a9b51e0bb75c2edb";
      };
      default = "r0";
    };
  };
}