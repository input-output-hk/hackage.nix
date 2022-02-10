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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "app-settings"; version = "0.2.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etouzery@gmail.com";
      author = "Emmanuel Touzery";
      homepage = "https://github.com/emmanueltouzery/app-settings";
      url = "";
      synopsis = "A library to manage application settings (INI file-like)";
      description = "A library to deal with application settings.\n\nThis library deals with read-write application settings.\nYou will have to specify the settings that your application\nuses, their name, types and default values.\n\nSetting types must implement the 'Read' and 'Show' typeclasses.\n\nThe settings are saved in a file in an INI-like key-value format\n(without sections).\n\nReading and updating settings is done in pure code, the IO\nmonad is only used to load settings and save them to disk.\nIt is advised for the user to create a module in your project\nholding settings handling.\n\nYou can then declare settings:\n\n> fontSize :: Setting Double\n> fontSize = Setting \"fontSize\" 14\n>\n> dateFormat :: Setting String\n> dateFormat = Setting \"dateFormat\" \"%x\"\n>\n> backgroundColor :: Setting (Int, Int, Int)\n> backgroundColor = Setting \"backcolor\" (255, 0, 0)\n\nOptionally you can declare the list of all your settings,\nin that case the application will also save the default\nvalues in the configuration file, but commented out:\n\n> fontSize=16\n> # dateFormat=\"%x\"\n> # backcolor=(255,0,0)\n\nIf you do not specify the list of settings, only the\nfirst line would be present in the configuration file.\n\nWith an ordinary setting, one row in the configuration file\nmeans one setting. That setting may of course be a list\nfor instance. This setup works very well for shorter lists\nlike [1,2,3], however if you have a list of more complex\nitems, you will get very long lines and a configuration\nfile very difficult to edit by hand.\n\nFor these special cases there is also the 'ListSetting'\nconstructor:\n\n> testList :: Setting [String]\n> testList = ListSetting \"testList\" [\"list1\", \"list2\", \"list3\"]\n\nNow the configuration file looks like that:\n\n> testList_1=\"list1\"\n> testList_2=\"list2\"\n> testList_3=\"list3\"\n\nWhich is much more handy for big lists. An empty list is represented\nlike so:\n\n> testList=\n\nThere is also another technique that you can use if you have too long\nlines: you can put line breaks in the setting values if you start the\nfollowing lines with a leading space, like so:\n\n> testList=[\"list1\",\n>  \"list2\", \"list3\"]\n\nIn that case don't use the ListSetting option. Any character after the\nthe leading space in the next lines will go in the setting value. Note\nthat the library will automatically wrap setting values longer than 80\ncharacters when saving.\n\nOnce we declared the settings, we can read the configuration\nfrom disk (and your settings module should export your wrapper\naround the function offered by this library):\n\n> readResult <- try $ readSettings (AutoFromAppName \"test\")\n> case readResult of\n> \tRight (conf, GetSetting getSetting) -> do\n> \t\tlet textSize = getSetting fontSize\n> \t\tsaveSettings emptyDefaultConfig (AutoFromAppName \"test\") conf\n> \tLeft (x :: SomeException) -> error \"Error reading the config file!\"\n\n'AutoFromAppName' specifies where to save the configuration file.\nAnd we've already covered the getSetting in this snippet, see\nthe 'readSettings' documentation for further information.\n\nYou can also look at the tests of the library on the github project for sample use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }