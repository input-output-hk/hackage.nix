{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      bytestring-in-base = true;
    };
    package = {
      specVersion = "1.8.0.2";
      identifier = {
        name = "NineP";
        version = "0.0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Alirzaev <zl29ah@gmail.com>";
      author = "Tim Newsham <newsham@lava.net>, Dave Leimbach <leimy2k@gmail.com>, Sergey Alirzaev <zl29ah@gmail.com>";
      homepage = "http://9ph.googlecode.com";
      url = "";
      synopsis = "9P2000 in pure Haskell";
      description = "Pure Haskell implementation of the 9P2000 protocol from the\nPlan 9 and Inferno operating systems.  Many implementations of\n9P2000 exist including the Linux kernel v9fs module, wmii\n(X window manager).  More information on 9P and implementations\nmay be found at http:\\/\\/9p.cat-v.org";
      buildType = "Simple";
    };
    components = {
      "NineP" = {
        depends  = if flags.bytestring-in-base
          then [
            (hsPkgs.base)
            (hsPkgs.binary)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
          ];
      };
    };
  }