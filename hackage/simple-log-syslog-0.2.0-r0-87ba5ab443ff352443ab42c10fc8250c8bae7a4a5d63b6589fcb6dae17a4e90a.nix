{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-log-syslog"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `voidex` Ruchkin";
      homepage = "http://github.com/mvoidex/simple-log-syslog";
      url = "";
      synopsis = "Syslog backend for simple-log";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.simple-log)
          (hsPkgs.hsyslog)
          ];
        };
      };
    }