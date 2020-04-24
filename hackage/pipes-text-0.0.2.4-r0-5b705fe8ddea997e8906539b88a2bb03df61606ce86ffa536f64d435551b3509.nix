{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."streaming-commons" or ((hsPkgs.pkgs-errors).buildDepError "streaming-commons"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-group" or ((hsPkgs.pkgs-errors).buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or ((hsPkgs.pkgs-errors).buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
          (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!flags.noio) (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"));
        buildable = true;
        };
      };
    }