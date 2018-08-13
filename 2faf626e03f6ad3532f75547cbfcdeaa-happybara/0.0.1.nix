{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "happybara";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2014 Charles Strahan";
      maintainer = "charles.c.strahan@gmail.com";
      author = "Charles Strahan";
      homepage = "https://github.com/cstrahan/happybara";
      url = "";
      synopsis = "Acceptance test framework for web applications";
      description = "/About/\n\nHappybara is an acceptance test framework inspired by the popular Ruby library\n\\\"Capybara\\\". A short example of Happybara's expressive DSL:\n\n>visit \"http://happybara-is-awesome.com\"\n>within \$ xpath \"//form[@id='vote-for-happybara']\" \$ do\n>   fillIn (fillableField \"First Name\" [ ]) \"Bob\"\n>   fillIn (fillableField \"Last Name\"  [ ]) \"Smith\"\n>\n>   click \$ button \"Vote!\" [ disabled False ]\n\n/Learning Happybara/\n\nI would suggest start with these resources (in order):\n\n* <https://github.com/cstrahan/happybara/ The Happybara Readme>\n\n* <http://hackage.haskell.org/package/happybara/docs/Happybara.html The Happybara Module docs>\n\nHappy web testing!";
      buildType = "Simple";
    };
    components = {
      "happybara" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
        ];
      };
    };
  }