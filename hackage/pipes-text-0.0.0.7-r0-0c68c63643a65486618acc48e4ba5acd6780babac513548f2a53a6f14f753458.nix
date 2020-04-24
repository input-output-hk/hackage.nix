{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { noio = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-text"; version = "0.0.0.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "what_is_it_to_do_anything@yahoo.com";
      author = "Michael Thompson";
      homepage = "https://github.com/michaelt/text-pipes";
      url = "";
      synopsis = "Text pipes.";
      description = "* This package will be in a draft, or testing, phase until version 0.0.1. Please report any installation difficulties, or any wisdom about the api, on the github page!\n\nThis organization of the package follows the rule\n\n* @pipes-text : pipes-bytestring :: text : bytestring@\n\nFamiliarity with the other three packages should give one an idea what to expect where. The package has three modules, @Pipes.Text@ , @Pipes.Text.Encoding@ and @Pipes.Text.IO@; the division has more or less the significance it has in the @text@ library.\n\nNote that the module @Pipes.Text.IO@ is present as a convenience (as is @Data.Text.IO@).  Official pipes IO would use @Pipes.ByteString@ and the decoding functions present here, based on the new Michael Snoyman's new @text-stream-decoding@ package.  In particular, the @Pipes.Text.IO@ functions use Text exceptions.\n\n@Pipes.Text.IO@ uses version 0.11.3 or later of the @text@ library. It thus works with the version of @text@ that came with the 2013 Haskell Platform. To use an older @text@, install with the flag @-fnoio@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-stream-decode" or ((hsPkgs.pkgs-errors).buildDepError "text-stream-decode"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
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