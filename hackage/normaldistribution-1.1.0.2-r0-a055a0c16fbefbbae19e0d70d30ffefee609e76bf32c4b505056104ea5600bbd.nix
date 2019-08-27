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
      specVersion = "0";
      identifier = { name = "normaldistribution"; version = "1.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Bjorn Buckwalter 2011";
      maintainer = "bjorn.buckwalter@gmail.com";
      author = "Bjorn Buckwalter";
      homepage = "https://github.com/bjornbm/normaldistribution";
      url = "";
      synopsis = "Minimum fuss normally distributed random values.";
      description = "This purpose of this library is to have a simple API and no\ndependencies beyond Haskell 98 in order to let you produce\nnormally distributed random values with a minimum of fuss. This\nlibrary does /not/ attempt to be blazingly fast nor to pass\nstringent tests of randomness. It attempts to be very easy to\ninstall and use while being \\\"good enough\\\" for many applications\n(simulations, games, etc.). The API builds upon and is largely\nanalogous to that of the Haskell 98 @Random@ module (more\nrecently @System.Random@).\n\nPure:\n\n> (sample,g) = normal  myRandomGen  -- using a Random.RandomGen\n> samples    = normals myRandomGen  -- infinite list\n> samples2   = mkNormals 10831452   -- infinite list using a seed\n\nIn the IO monad:\n\n> sample    <- normalIO\n> samples   <- normalsIO  -- infinite list\n\nWith custom mean and standard deviation:\n\n> (sample,g) = normal'    (mean,sigma) myRandomGen\n> samples    = normals'   (mean,sigma) myRandomGen\n> samples2   = mkNormals' (mean,sigma) 10831452\n\n> sample    <- normalIO'  (mean,sigma)\n> samples   <- normalsIO' (mean,sigma)\n\nInternally the library uses the Box-Muller method to generate\nnormally distributed values from uniformly distributed random values.\nIf more than one sample is needed taking samples off an infinite\nlist (created by e.g. 'normals') will be roughly twice as efficient\nas repeatedly generating individual samples with e.g. 'normal'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."haskell98" or (buildDepError "haskell98"))
          ];
        };
      };
    }