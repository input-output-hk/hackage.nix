{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "binding-wx"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://bitbucket.org/accursoft/binding";
      url = "";
      synopsis = "Data Binding in WxHaskell";
      description = "Bind mutable data and lists to WxHaskell widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wxcore)
          (hsPkgs.wx)
          (hsPkgs.binding-core)
          (hsPkgs.stm)
          ];
        };
      tests = {
        "simple" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.binding-core)
            (hsPkgs.binding-wx)
            ];
          };
        "lists" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wx)
            (hsPkgs.binding-core)
            (hsPkgs.binding-wx)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }