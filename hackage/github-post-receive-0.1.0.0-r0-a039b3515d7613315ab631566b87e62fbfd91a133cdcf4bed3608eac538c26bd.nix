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
        name = "github-post-receive";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Shohei Yasutake";
      maintainer = "Shohei Yasutake <amkkun@gmail.com>";
      author = "Shohei Yasutake";
      homepage = "http://github.com/amkkun/github-post-receive";
      url = "";
      synopsis = "github web hooks server";
      description = "This is a server of github web hooks.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "github-post-receive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.scotty)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }