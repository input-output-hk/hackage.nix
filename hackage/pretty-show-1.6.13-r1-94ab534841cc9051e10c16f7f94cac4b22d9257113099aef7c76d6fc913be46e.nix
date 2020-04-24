{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pretty-show"; version = "1.6.13"; };
      license = "MIT";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://wiki.github.com/yav/pretty-show";
      url = "";
      synopsis = "Tools for working with derived `Show` instances and generic\ninspection of values.";
      description = "We provide a library and an executable for working with derived 'Show'\ninstances. By using the library, we can parse derived 'Show' instances into a\ngeneric data structure. The @ppsh@ tool uses the library to produce\nhuman-readable versions of 'Show' instances, which can be quite handy for\ndebugging Haskell programs.  We can also render complex generic values into\nan interactive Html page, for easier examination.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-lexer" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lexer"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      exes = {
        "ppsh" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            ];
          buildable = true;
          };
        };
      };
    }