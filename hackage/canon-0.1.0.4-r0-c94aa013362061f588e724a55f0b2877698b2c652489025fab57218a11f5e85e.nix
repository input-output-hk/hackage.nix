{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "canon";
        version = "0.1.0.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "frederick dot schneider2011 at gmail dot com";
      author = "Frederick Schneider";
      homepage = "https://github.com/grandpascorpion/canon";
      url = "";
      synopsis = "Massive Number Arithmetic";
      description = "This library allows one to manipulate numbers of practically unlimited size by keeping them in factored \"canonical\" form,\nwhere possible.  For manipulating sums and differences, there is additional code to factor expressions of special forms.\nPlease refer to CanonManualTests.hs and the .odp presentation files for usage examples and background.";
      buildType = "Simple";
    };
    components = {
      "canon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.arithmoi)
          (hsPkgs.polynomial)
          (hsPkgs.array)
          (hsPkgs.containers)
        ];
      };
    };
  }