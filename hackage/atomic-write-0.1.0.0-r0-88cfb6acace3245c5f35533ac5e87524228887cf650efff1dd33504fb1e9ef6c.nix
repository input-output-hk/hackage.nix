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
      identifier = { name = "atomic-write"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "";
      url = "";
      synopsis = "Atomically write to a file";
      description = "\nAtomically write to a file on POSIX-compliant systems while preserving\npermissions.\n\nOn most Unix systems, `mv` is an atomic operation. This makes it simple to write\nto a file atomically just by using the mv operation. However, this will\ndestroy the permissions on the original file. This library does the following\nto preserve permissions while atomically writing to a file:\n\n* If an original file exists, take those permissions and apply them to the\ntemp file before `mv`ing the file into place.\n* If the original file does not exist, create a following with default\npermissions (based on the currently-active umask).\n\nThis way, when the file is `mv`'ed into place, the permissions will be the ones\nheld by the original file.\n\nThis library is based on similar implementations found in common libraries in\nRuby and Python:\n\n* <http://apidock.com/rails/File/atomic_write/class Ruby on Rails includes a similar method called atomic_write>\n* <https://github.com/chef/chef/blob/c4631816132fcfefaba3d123a1d0dfe8bc2866bb/lib/chef/file_content_management/deploy/mv_unix.rb#L23:L71 Chef includes atomic update functionality>\n* <https://github.com/sashka/atomicfile There is a python library for atomically updating a file>\n\nNote that at this time Windows is not supported, however we would appreciate\ncontributions to the <http://github.com/stackbuilders/atomic-write github repository>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      tests = {
        "atomic-write-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            ];
          };
        };
      };
    }