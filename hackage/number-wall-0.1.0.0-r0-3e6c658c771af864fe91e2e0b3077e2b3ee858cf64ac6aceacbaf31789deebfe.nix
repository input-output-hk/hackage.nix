{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "number-wall"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ombspring@gmail.com";
      author = "Owen Bechtel";
      homepage = "https://github.com/UnaryPlus/number-wall";
      url = "";
      synopsis = "Create number walls and save them as images";
      description = "A \"number wall\" is an infinite grid associated to some (bi-directional) sequence.\nThe \"numbers\" in the grid are usually either integers, or integers modulo some prime.\nNumber walls can be defined in terms of determinants, but can also be calculated\nusing a recursive algorithm.\n\nFormally, let \\( R \\) be an integral domain. The number wall of a sequence\n\\( S : \\mathbb{Z} \\to R \\) is an infinite grid of numbers \\( W \\), defined as follows:\n\n\\[\nW(x, y) = \\begin{cases}\n0 & y < -1 \\\\\n1 & y = -1 \\\\\nS(x) & y = 0 \\\\\nD(x, y) & y > 0\n\\end{cases}\n\\]\n\n\\[\nD(x, y) = \\begin{vmatrix}\nS(x) & S(x + 1) & \\ldots & S(x + y) \\\\\nS(x - 1) & S(x) & \\ldots & S(x + y - 1) \\\\\n\\vdots & \\vdots & \\ddots & \\vdots \\\\\nS(x - y) & S(x - y + 1) & \\ldots & S(x)\n\\end{vmatrix}\n\\]\n\nThe values in any number wall satisfy the relation\n\\( W(x, y - 1) W(x, y + 1) + W(x - 1, y) W(x + 1, y) = W(x, y)^2 \\),\nand some other more complicated relations. You can use these to define a\nrecursive algorithm for generating number walls.\n\nHere are some cool images created using the functions in this package:\n\n![number wall image collage](number-wall/src/collage.png)\n\nSee [this video](https://www.youtube.com/watch?v=NO1_-qptr6c) for more\ninformation and fun facts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memoize" or (errorHandler.buildDepError "memoize"))
          (hsPkgs."mod" or (errorHandler.buildDepError "mod"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."number-wall" or (errorHandler.buildDepError "number-wall"))
          ];
          buildable = true;
        };
      };
    };
  }