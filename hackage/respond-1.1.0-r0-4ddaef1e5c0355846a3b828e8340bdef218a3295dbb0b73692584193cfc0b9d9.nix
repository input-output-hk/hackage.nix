{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "respond"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, aidan coyne";
      maintainer = "coynea90@gmail.com";
      author = "aidan coyne";
      homepage = "https://github.com/raptros/respond";
      url = "";
      synopsis = "process and route HTTP requests and generate responses on top of WAI";
      description = "a Haskell library built on top of WAI for processing and routing HTTP requests and generating responses.  see the source repository for a simple example application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.bifunctors)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          (hsPkgs.fast-logger)
          (hsPkgs.transformers)
          (hsPkgs.http-media)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.formatting)
          (hsPkgs.bytestring)
          (hsPkgs.monad-logger)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.HList)
          (hsPkgs.http-types)
          (hsPkgs.path-pieces)
          (hsPkgs.unordered-containers)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.respond)
            (hsPkgs.wai)
            (hsPkgs.aeson)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.fast-logger)
            ];
          };
        };
      };
    }