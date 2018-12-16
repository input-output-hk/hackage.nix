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
      specVersion = "1.8";
      identifier = {
        name = "geniserver";
        version = "0.24.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "geni-users@loria.fr";
      author = "Eric Kow";
      homepage = "";
      url = "";
      synopsis = "Simple HTTP server for GenI results";
      description = "Simple HTTP server for GenI results";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cmdargs)
          (hsPkgs.snap-core)
          (hsPkgs.http-types)
          (hsPkgs.json)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.GenI)
        ];
      };
      exes = {
        "geniserver" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.geniserver)
            (hsPkgs.GenI)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.text)
          ];
        };
      };
    };
  }