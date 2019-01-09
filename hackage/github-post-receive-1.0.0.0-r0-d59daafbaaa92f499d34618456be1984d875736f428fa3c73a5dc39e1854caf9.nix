{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "github-post-receive"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Shohei Yasutake";
      maintainer = "Shohei Yasutake <amutake.s@gmail.com>";
      author = "Shohei Yasutake";
      homepage = "https://github.com/amutake/github-post-receive";
      url = "";
      synopsis = "Github post-receive server library";
      description = "This is a library to construct a github post-receive server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.email-validate)
          (hsPkgs.conduit)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.warp)
          ];
        };
      };
    }