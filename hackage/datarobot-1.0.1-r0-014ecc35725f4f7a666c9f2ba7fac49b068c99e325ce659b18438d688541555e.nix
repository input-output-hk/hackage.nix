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
        name = "datarobot";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Orbital Labs";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/orbital/datarobot-haskell#readme";
      url = "";
      synopsis = "Client for DataRobot API";
      description = "Client for DataRobot API";
      buildType = "Simple";
    };
    components = {
      "datarobot" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.microlens)
          (hsPkgs.network-uri)
          (hsPkgs.safe)
          (hsPkgs.scientific)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.wreq)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.datarobot)
            (hsPkgs.exceptions)
            (hsPkgs.microlens)
            (hsPkgs.network-uri)
            (hsPkgs.safe)
            (hsPkgs.scientific)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.wreq)
          ];
        };
      };
    };
  }