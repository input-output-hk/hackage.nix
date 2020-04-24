{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fast = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "variable-precision"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Claude Heiland-Allen";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/variable-precision";
      url = "";
      synopsis = "variable-precision floating point";
      description = "Software floating point with type-tagged variable mantissa precision,\nimplemented using a strict pair of 'Integer' and 'Int' scaled alike\nto 'decodeFloat'.\n\nInstances of the usual numeric type classes are provided, along with\nadditional operators (with carefully chosen fixities) to coerce,\nadjust and reify precisions.\n\nThe intention with this library is to be relatively simple but still\nuseful, refer to the documentation for caveats concerning accuracy and\nassorted ill-behaviour.\n\nUsage with ghc(i)-7.0.4 might require @-fcontext-stack=100@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."floatshow" or ((hsPkgs.pkgs-errors).buildDepError "floatshow"))
          (hsPkgs."type-level-natural-number" or ((hsPkgs.pkgs-errors).buildDepError "type-level-natural-number"))
          ] ++ (pkgs.lib).optional (flags.fast) (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"));
        buildable = true;
        };
      };
    }