{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "webcloud";
        version = "0.1.0.1";
      };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "maxwellswadling@gmail.com";
      author = "Maxwell Swadling";
      homepage = "";
      url = "";
      synopsis = "Turn an optparse-applicative program into a CGI program!";
      description = "Automatically generate a web interface for your existing\noptparse-applicative command line applications.";
      buildType = "Simple";
    };
    components = {
      "webcloud" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          (hsPkgs.cgi)
          (hsPkgs.bytestring)
        ];
      };
      exes = {
        "testcloud" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-applicative)
            (hsPkgs.webcloud)
          ];
        };
      };
    };
  }