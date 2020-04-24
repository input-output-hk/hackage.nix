{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "list-singleton"; version = "1.0.0.3"; };
      license = "ISC";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Easily and clearly create lists with only one element in them.";
      description = "The @list-singleton@ package allows you to easily and clearly create lists\nwith only one element in them, which are typically called \"singleton lists\"\nor simply \"singletons\". (Not to be confused with\nthe @[singletons](https://hackage.haskell.org/package/singletons)@ package!)\n\nWith any luck this library will be included in future versions of\nthe @[base](https://hackage.haskell.org/package/base)@ package. See this\nmailing list thread for an extended discussion:\n<https://mail.haskell.org/pipermail/libraries/2019-August/029801.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }