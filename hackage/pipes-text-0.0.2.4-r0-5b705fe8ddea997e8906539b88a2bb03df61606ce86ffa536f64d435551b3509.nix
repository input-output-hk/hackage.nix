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
    flags = { noio = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-text"; version = "0.0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "Michael Thompson";
      homepage = "https://github.com/michaelt/text-pipes";
      url = "";
      synopsis = "properly streaming text";
      description = "/New in version 0.0.2.x/: The new module @Pipes.Prelude.Text@ exports line-based @Text@ producers and consumers as a drop-in replacement for the @String@ material in @Pipes.Prelude@ and @Pipes.Safe.Prelude@. They can be used as one uses @Pipes.Prelude@ without reference to the rest of this package. See the caveats in the documentation for that module.\n\nThe organization of this package follows the rule:\n\n* @pipes-text : pipes-bytestring :: text : bytestring@\n\nFamiliarity with the other three packages should give one an idea what to expect where. The package has three principal modules, @Pipes.Text@ , @Pipes.Text.Encoding@ and @Pipes.Text.IO@; the division has more or less the significance it has in the @text@ library.\n\nThe module @Pipes.Text.IO@ is present as a convenience.  Official pipes IO uses @Pipes.ByteString@ together with the bytestring decoding functions in @Pipes.Text.Encoding@.  In particular, the @Pipes.Text.IO@ functions use Text exceptions, while @Pipes.Text@ uses the standard pipes practice of breaking with a failed parse. Thus, for example, the type of @decodeUtf8@ is\n\n* @decodeUtf8 :: Monad m => Producer ByteString m r -> Producer Text m (Producer ByteString m r)@\n\nwhere any unparsed bytes are returned.\n\n@Pipes.Text.IO@ and @Pipes.Prelude.Text@ use version 0.11.3 or later of the @text@ library; older versions of @text@ can be used with the flag @-fnoio@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!flags.noio) (hsPkgs."text" or (buildDepError "text"));
        };
      };
    }