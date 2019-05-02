{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "th-env"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/th-env#readme";
      url = "";
      synopsis = "Template Haskell splice that expands to an environment variable";
      description = "TH splice that expands to an environment variable value. Can be used to embed build-time parameters in your application.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "readme" = {
          depends = [ (hsPkgs.base) (hsPkgs.markdown-unlit) (hsPkgs.th-env) ];
          };
        };
      };
    }