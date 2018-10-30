{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      parsec = true;
      trifecta = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "indentation";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
      author = "Michael D. Adams <http://michaeldadams.org/>";
      homepage = "https://bitbucket.org/mdmkolbe/indentation";
      url = "";
      synopsis = "Indentation sensitive parsing combinators for Parsec";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (flags.parsec) (hsPkgs.parsec)) ++ pkgs.lib.optionals (flags.trifecta) [
          (hsPkgs.trifecta)
          (hsPkgs.parsers)
        ];
      };
    };
  }