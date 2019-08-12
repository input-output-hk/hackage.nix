{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mssql-simple"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Takamasa Mitsuji";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "https://github.com/mitsuji/mssql-simple#readme";
      url = "";
      synopsis = "SQL Server client library implemented in Haskell";
      description = "Please see the README on GitHub at <https://github.com/mitsuji/mssql-simple#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.hostname)
          (hsPkgs.ms-tds)
          (hsPkgs.network)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tls)
          ];
        };
      tests = {
        "tds-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.hostname)
            (hsPkgs.ms-tds)
            (hsPkgs.mssql-simple)
            (hsPkgs.network)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tls)
            ];
          };
        };
      };
    }