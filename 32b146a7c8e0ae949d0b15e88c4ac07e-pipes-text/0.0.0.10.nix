{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      noio = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-text";
          version = "0.0.0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "Michael Thompson";
        homepage = "https://github.com/michaelt/text-pipes";
        url = "";
        synopsis = "Text pipes.";
        description = "* This package will be in a draft, or testing, phase until version 0.0.1. Please report any installation difficulties, or any wisdom about the api, on the github page or the <https://groups.google.com/forum/#!forum/haskell-pipes pipes list>\n\nThis organization of the package follows the rule\n\n* @pipes-text : pipes-bytestring :: text : bytestring@\n\nFamiliarity with the other three packages should give one an idea what to expect where. The package has three modules, @Pipes.Text@ , @Pipes.Text.Encoding@ and @Pipes.Text.IO@; the division has more or less the significance it has in the @text@ library.\n\nNote that the module @Pipes.Text.IO@ is present as a convenience (as is @Data.Text.IO@).  Official pipes IO would use @Pipes.ByteString@ and the decoding functions present here, based on the new Michael Snoyman's new @text-stream-decoding@ package.  In particular, the @Pipes.Text.IO@ functions use Text exceptions.\n\n@Pipes.Text.IO@ uses version 0.11.3 or later of the @text@ library. It thus works with the version of @text@ that came with the 2013 Haskell Platform. To use an older @text@, install with the flag @-fnoio@";
        buildType = "Simple";
      };
      components = {
        pipes-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.text-stream-decode
            hsPkgs.profunctors
            hsPkgs.pipes
            hsPkgs.pipes-group
            hsPkgs.pipes-parse
            hsPkgs.pipes-safe
            hsPkgs.pipes-bytestring
            hsPkgs.transformers
          ] ++ pkgs.lib.optional (!_flags.noio) hsPkgs.text;
        };
      };
    }