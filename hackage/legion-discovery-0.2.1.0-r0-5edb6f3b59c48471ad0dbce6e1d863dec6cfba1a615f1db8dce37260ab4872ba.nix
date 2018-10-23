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
        name = "legion-discovery";
        version = "0.2.1.0";
      };
      license = "Apache-2.0";
      copyright = "2016 Rick Owens";
      maintainer = "rick@owensmurray.comm";
      author = "Rick Owens";
      homepage = "https://github.com/owensmurray/legion-discovery#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "legion-discovery" = {
        depends  = [
          (hsPkgs.Cabal)
          (hsPkgs.SHA)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.canteven-http)
          (hsPkgs.canteven-log)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.http-types)
          (hsPkgs.legion)
          (hsPkgs.legion-extra)
          (hsPkgs.monad-logger)
          (hsPkgs.scotty)
          (hsPkgs.scotty-resource)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "legion-discovery" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.legion-discovery)
          ];
        };
      };
      tests = {
        "legion-discovery-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.legion-discovery)
          ];
        };
      };
    };
  }