{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-session-mysql"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Li Meng Jun";
      maintainer = "Li Meng Jun <lmjubuntu@gmail.com>";
      author = "Li Meng Jun <lmjubuntu@gmail.com>";
      homepage = "https://github.com/Lupino/mysql-session#readme";
      url = "";
      synopsis = "MySQL backed Wai session store";
      description = "Provides a MySQL backed session store for the Network.Wai.Session interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cookie)
          (hsPkgs.data-default)
          (hsPkgs.entropy)
          (hsPkgs.mysql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-session)
          ];
        };
      tests = {
        "mysql-session-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.mysql-simple)
            (hsPkgs.text)
            (hsPkgs.wai-session)
            (hsPkgs.wai-session-mysql)
            ];
          };
        };
      };
    }