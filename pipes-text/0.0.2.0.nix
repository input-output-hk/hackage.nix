{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      noio = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-text";
          version = "0.0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "Michael Thompson";
        homepage = "https://github.com/michaelt/text-pipes";
        url = "";
        synopsis = "Text pipes.";
        description = "* This organization of the package follows the rule\n\n* @pipes-text : pipes-bytestring :: text : bytestring@\n\nFamiliarity with the other three packages should give one an idea what to expect where. The package has three principal modules, @Pipes.Text@ , @Pipes.Text.Encoding@ and @Pipes.Text.IO@; the division has more or less the significance it has in the @text@ library. A fourth module @Pipes.Prelude.Text@ is explained below.\n\nNote that the module @Pipes.Text.IO@ is present as a convenience (as is @Data.Text.IO@).  Official pipes IO would use @Pipes.ByteString@ together with the bytestring decoding functions in @Pipes.Text.Encoding@.  In particular, the @Pipes.Text.IO@ functions use Text exceptions.\n\nThe fourth module @Pipes.Prelude.Text@ exports line-based Text producers and consumers as a drop-in replacement for the String material in @Pipes.Prelude@ and @Pipes.Safe.Prelude@. They can be used as one uses @Pipes.Prelude@ without reference to the rest of this package. See the caveats in the documentation for that module.\n\n@Pipes.Text.IO@ and @Pipes.Prelude.Text@ use version 0.11.3 or later of the @text@ library. To use a (very) old version of @text@, install with the flag @-fnoio@";
        buildType = "Simple";
      };
      components = {
        pipes-text = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.streaming-commons
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