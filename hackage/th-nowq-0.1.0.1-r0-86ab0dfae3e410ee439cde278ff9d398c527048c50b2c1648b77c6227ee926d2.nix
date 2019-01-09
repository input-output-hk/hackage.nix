{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-nowq"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/th-nowq#readme";
      url = "";
      synopsis = "Template Haskell splice that expands to current time";
      description = "TH splice that expands to current time as a string literal in ISO-8601 format. Can be used to embed the compilation timestamp in your application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.template-haskell) (hsPkgs.time) ];
        };
      tests = {
        "readme" = {
          depends = [ (hsPkgs.base) (hsPkgs.markdown-unlit) (hsPkgs.th-nowq) ];
          };
        };
      };
    }