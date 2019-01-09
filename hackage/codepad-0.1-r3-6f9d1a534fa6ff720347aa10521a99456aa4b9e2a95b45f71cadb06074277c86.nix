{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "codepad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris King <G.nius.ck@gmail.com>";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/codepad";
      url = "";
      synopsis = "Submit and retrieve paste output from CodePad.org.";
      description = "Submit and retrieve paste output from http://codepad.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tagsoup)
          (hsPkgs.network)
          (hsPkgs.curl)
          (hsPkgs.mtl)
          ];
        };
      };
    }