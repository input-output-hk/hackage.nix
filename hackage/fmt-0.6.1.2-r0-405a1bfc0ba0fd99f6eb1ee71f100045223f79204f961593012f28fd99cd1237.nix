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
      specVersion = "1.10";
      identifier = { name = "fmt"; version = "0.6.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom Kazak <yom@artyom.me>,\nDmitry Kovanikov <kovanikov@gmail.com>";
      homepage = "http://github.com/aelve/fmt";
      url = "";
      synopsis = "A new formatting library";
      description = "A new formatting library that tries to be simple to understand while still\nbeing powerful and providing more convenience features than other libraries\n(like functions for pretty-printing maps and lists, or a function for\nprinting arbitrary datatypes using generics).\n\nA comparison with other libraries:\n\n* @printf@ (from @Text.Printf@) takes a formatting string and uses some\ntype tricks to accept the rest of the arguments polyvariadically. It's\nvery concise, but there are some drawbacks – it can't produce @Text@\n(you'd have to @T.pack@ it every time) and it doesn't warn you at\ncompile-time if you pass wrong arguments or not enough of them.\n\n* <https://hackage.haskell.org/package/text-format text-format> takes a\nformatting string with curly braces denoting places where arguments\nwould be substituted (the arguments themselves are provided via a\ntuple). If you want to apply formatting to some of the arguments, you\nhave to use one of the provided formatters. Like @printf@, it can fail at\nruntime, but at least the formatters are first-class (and you can add new\nones).\n\n* <https://hackage.haskell.org/package/formatting formatting> takes a\nformatting template consisting of pieces of strings interleaved with\nformatters; this ensures that arguments always match their placeholders.\n@formatting@ provides lots of formatters and generally seems to be the\nmost popular formatting library here. Unfortunately, at least in my\nexperience writing new formatters can be awkward and people sometimes\nhave troubles understanding how @formatting@ works.\n\n* <https://hackage.haskell.org/package/fmt fmt> (i.e. this library)\nprovides formatters that are ordinary functions, and a bunch of operators\nfor concatenating formatted strings; those operators also do automatic\nconversion. There are some convenience formatters which aren't present in\n@formatting@ (like ones for formatting maps, lists, converting to base64,\netc). Some find the operator syntax annoying, while others like it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."call-stack" or (buildDepError "call-stack"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."formatting" or (buildDepError "formatting"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."call-stack" or (buildDepError "call-stack"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.doctest-discover or (pkgs.buildPackages.doctest-discover or (buildToolDepError "doctest-discover")))
            ];
          };
        };
      benchmarks = {
        "benches" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."fmt" or (buildDepError "fmt"))
            (hsPkgs."formatting" or (buildDepError "formatting"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }