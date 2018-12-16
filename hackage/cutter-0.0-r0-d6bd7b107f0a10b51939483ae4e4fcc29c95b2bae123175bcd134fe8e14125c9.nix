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
      specVersion = "1.8";
      identifier = {
        name = "cutter";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "Cut files according to a position list";
      description = "Cut a file into chunks according to a position list\nand concatenate the chunks.\nThe chunks must not overlap and must be in increasing order.\n\nUse it this way:\n\n> cutter positions.csv <datain >dataout\n\nThe file @positions.csv@ must be a comma separated spreadsheet file (CSV),\nwhere the first column contains the chunk beginnings\nand the second column contains the pause beginnings.\nA pause begins one byte after a chunk ends.\nThe other columns are ignored and may contain annotations of the chunks.\n\nThe positions file may also contain line numbers.\nIn this case you run the command this way:\n\n> cutter -l positions.csv <datain >dataout\n\nExample: remove selected attachments from e-mails in mbox file\nusing the @lsmbox@ command from <http://hackage.haskell.org/package/mbox-utility>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cutter" = {
          depends = [
            (hsPkgs.spreadsheet)
            (hsPkgs.explicit-exception)
            (hsPkgs.bytestring)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
          ];
        };
      };
    };
  }