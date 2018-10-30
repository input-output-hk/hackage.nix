{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pretty-error";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "(c) 2015 Jonathan M. Lange";
      maintainer = "jml@mumak.net";
      author = "Jonathan M. Lange";
      homepage = "https://github.com/jml/pretty-error";
      url = "";
      synopsis = "Pretty error messages for runtime invariants";
      description = "Sometimes you need to assume something at runtime that you can't prove in the\ntype system. When you do that, you should make sure you get a good error\nmessage if ever your assumption turns out to be wrong. That's what this library\nis for.\n\nUse the functions in here to get high quality error messages for when your\ninvariants don't hold at runtime. The functions all pretty print any Haskell\nvalues given to them, which makes it easier to understand what's going on when\nyour code breaks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.pretty-show)
        ];
      };
    };
  }