{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "acme-php";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "headprogrammingczar@gmail.com";
      author = "JoeQuinn";
      homepage = "http://hackage.haskell.org/package/acme-php-0.0.5/src/docs.html";
      url = "";
      synopsis = "The flexibility of Haskell and the safety of PHP";
      description = "At last, a module that combines the dynamic flexibility of Haskell with the strong design principles of PHP!";
      buildType = "Simple";
    };
    components = {
      "acme-php" = {
        depends  = [
          (hsPkgs.acme-left-pad)
          (hsPkgs.base)
        ];
      };
    };
  }