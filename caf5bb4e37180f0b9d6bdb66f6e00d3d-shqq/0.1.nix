{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "shqq";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Embed shell commands with interpolated Haskell variables, and capture output";
        description = "This library provides a quasiquoter for executing shell commands, somewhat\nsimilar to Perl's backtick operator.  Shell commands are IO actions, and\nthey capture the command's standard output as a @String@ result.\n\nYou can use Haskell variables in a shell command.  A string representation\nof the contents will be interpolated.  The shell will see each interpolated\nvariable as a single token without interpreting special characters, unless\nyou choose otherwise.\n\nNote: The shell escaping is not correct for the Windows shell.  This library\nshould fail to build on Windows, as well.\n\nExamples of using this library are included in @examples/@.";
        buildType = "Simple";
      };
      components = {
        "shqq" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.posix-escape
            hsPkgs.parsec
            hsPkgs.unix
            hsPkgs.process
          ];
        };
      };
    }