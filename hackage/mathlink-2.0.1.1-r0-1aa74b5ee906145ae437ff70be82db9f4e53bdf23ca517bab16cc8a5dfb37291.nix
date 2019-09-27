let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "mathlink"; version = "2.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Tracy Wadleigh 2009";
      maintainer = "<tracy.wadleigh@gmail.com>";
      author = "Tracy Wadleigh";
      homepage = "http://community.haskell.org/~TracyWadleigh/mathlink";
      url = "";
      synopsis = "Write Mathematica packages in Haskell";
      description = "Makes it easy to write /Mathematica/ packages in Haskell. Just write some\nfunctions and provide a package specification in a simple DSL that\nmimics that of /Mathematica/'s @mprep@ utility.\n\nData marshaling is accomplished via the 'MLGet' and 'MLPut' classes, which\nspecify types that that can be read from or written to the /MathLink/\nconnection. Instances of these classes are provided for the obvious\nstandard data types, including tuples, lists, and 'UArray's.\n\nA Haskell function that is to be exposed to /Mathematica/ has the type\nsignature @('MLGet' a, 'MLPut' b) => a -> 'ML' b@. The 'ML' monad provides\nsingle-threaded access to the /MathLink/ connection.\n\nA simple example of a /Mathematica/ package:\n\n@\nimport Foreign.MathLink\n\n\\-- define a function\naddTwo :: (Int,Int) -> ML Int\naddTwo (x,y) = return \$ x+y\n\n\\-- specify a package\nspec :: MLSpec\nspec =\n\\    -- start a package definition\n\\  [ Eval \$ \\\"BeginPackage\\\":\\@[St \\\"Test\\`\\\"]\n\n\\    -- define a usage message for the public symbol\n\\  , DeclMsg \\\"AddTwo\\\" \\\"usage\\\" \\\"AddTwo[..] adds a pair of numbers\\\"\n\n\\    -- open a new (private) namespace\n\\  , Eval \$ \\\"Begin\\\":\\@[St \\\"\\`Private\\`\\\"]\n\n\\    -- declare the function\n\\  , DeclFn &#123;\n\\      callPattern = \\\"AddTwo[x_Integer,y_Integer]\\\"\n\\    , argPattern = \\\"&#123;x,y&#125;\\\"\n\\    , func = addTwo\n\\    &#125;\n\n\\    -- close the namespaces\n\\  , Eval \$ \\\"End\\\":\\@[]\n\\  , Eval \$ \\\"EndPackage\\\":\\@[]\n\\  ]\n\n\\-- runs the /MathLink/ connection\nmain :: IO ()\nmain = runMathLink spec\n@";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ix-shapable" or (buildDepError "ix-shapable"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }