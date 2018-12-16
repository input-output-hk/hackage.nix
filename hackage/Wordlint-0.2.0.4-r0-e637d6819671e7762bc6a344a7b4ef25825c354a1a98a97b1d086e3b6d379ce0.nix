{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Wordlint";
        version = "0.2.0.4";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2014-2015";
      maintainer = "gbgar@users.noreply.github.com";
      author = "GB Gardner";
      homepage = "https://github.com/gbgar/Wordlint";
      url = "";
      synopsis = "Plaintext prose redundancy linter.";
      description = "Wordlint locates matching pairs of words repeated within a user-defined\ndistance.  Text may be linted by distance between words (that is, by word\ncount), by line count, and/or by percentage of the total words in the file.\nFor details on running the program, see README or the included man page.\nInternally, Wordlint separates a text file (or stdin) into\na list of \"Words\", after processing user flags. An instance of the \"Word\"\ndatatype consisting of a String that contains a lemma; its line and column\ncoordinates; and its \"position\": an Int or Float depending on the type of check\ninvoked by the user.\nThis list is first filtered by the user-defined minimum\nlength of the lemma. Next, items are matched by their lemma and exclusive\ncoordinates before being added to a list of \"Wordpairs\", a data structure\ncontaining two Words and the difference between their respective \"positions\".\nIf multiple types are specified, all Int positions are converted to the Double\ntype and the resulting lists are intersected to produce the final results.\nFinally, these Wordpairs are optionally filtered by the difference in their\npositions (another user-specified option). All remaining Wordpairs are\nprocessed for printing to stdout in machine-readable (default) or\nhuman-readable format. Plugins exist for integration with Vim\n(https:\\/\\/github.com\\/gbgar\\/Wordlint.vim) and Emacs\n(https:\\/\\/github.com\\/gbgar\\/wordlint.el).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.boxes)
        ];
      };
      exes = {
        "wordlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.boxes)
          ];
        };
      };
    };
  }