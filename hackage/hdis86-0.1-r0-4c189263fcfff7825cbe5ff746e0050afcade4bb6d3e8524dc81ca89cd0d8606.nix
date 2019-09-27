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
    flags = { external-udis86 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hdis86"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "https://github.com/kmcallister/hdis86";
      url = "";
      synopsis = "Interface to the udis86 disassembler for x86 and x86-64 / AMD64";
      description = "@hdis86@ is an interface to the @udis86@ disassembler, which decodes machine\ncode for 16-, 32-, and 64-bit x86  and x86-64 / AMD64 processors.  @hdis86@\nprovides an instruction stream as a Haskell algebraic data type, suitable for\ninspection by pattern matching.  It also provides metadata such as assembly\nsyntax in Intel or AT&T flavors.\n\nThis library exposes three layers of wrapping:\n\n* The @Pure@ module has the simplest interface, effectively\n@ByteString -> [Instruction]@.\n\n* The @IO@ module exposes an imperative API closely matching the @udis86@\nstate machine, while providing Haskellish types and automatic resource\nmanagement.\n\n* The @C@ module is a direct import of the @udis86@ library, with C types\nand conventions.\n\nMany users can simply import @Hdis86@.\n\nBy default, @hdis86@ will statically link a built-in copy of @udis86-1.7@,\nwhich is provided by its author under a similar BSD license.  See inside the\ntarball for more information.  If you have @udis86@ installed on your system,\nyou can instead link dynamically using\n@cabal configure --flags=external-udis86@.  In that case see also @doc/customizing.txt@.\n\nThis code is available on GitHub at <https://github.com/kmcallister/hdis86>.\n\nThe @udis86@ project website is located at <http://udis86.sourceforge.net/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (flags.external-udis86) (pkgs."udis86" or (sysDepError "udis86"));
        buildable = true;
        };
      };
    }