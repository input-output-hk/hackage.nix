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
    flags = { noio = false; maintainer = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "pipes-text"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Michael Thompson";
      homepage = "https://github.com/pjones/pipes-text";
      url = "";
      synopsis = "properly streaming text";
      description = "The organization of this package follows the rule:\n\n* @pipes-text : pipes-bytestring :: text : bytestring@\n\nFamiliarity with the other three packages should give one an idea\nwhat to expect here. The package has three principal modules,\n@Pipes.Text@ , @Pipes.Text.Encoding@ and @Pipes.Text.IO@; the\ndivision has more or less the significance it has in the @text@\nlibrary.\n\nThe module @Pipes.Text.IO@ is present as a convenience.  Official\npipes IO uses @Pipes.ByteString@ together with the bytestring\ndecoding functions in @Pipes.Text.Encoding@.  In particular, the\n@Pipes.Text.IO@ functions use Text exceptions, while @Pipes.Text@\nuses the standard pipes practice of breaking with a failed\nparse. Thus, for example, the type of @decodeUtf8@ is\n\n* @decodeUtf8 :: Monad m => Producer ByteString m r -> Producer Text m (Producer ByteString m r)@\n\nwhere any unparsed bytes are returned.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
          (hsPkgs."pipes-parse" or (errorHandler.buildDepError "pipes-parse"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!flags.noio) (hsPkgs."text" or (errorHandler.buildDepError "text"));
        buildable = true;
        };
      };
    }