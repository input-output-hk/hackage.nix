{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      gui = true;
      mplayer = true;
      httpserver = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "live-sequencer";
          version = "0.0.4";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Johannes Waldmann <waldmann@imn.htwk-leipzig.de>, Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Henning Thielemann and Johannes Waldmann";
        homepage = "http://www.haskell.org/haskellwiki/Live-Sequencer";
        url = "";
        synopsis = "Live coding of MIDI music";
        description = "An editor shows a textual description of music (like Haskore),\nan interpreter computes and emits a stream of MIDI events,\nand (that's the main point) the user can change the program on the fly.\nAdditionally the state of the interpreter is shown\nin the form of the current reduced term\nfor educational and debugging purposes.\n\n1. example usage *****\n\nThe live-sequencer does not make music itself,\nits entire task is to control other software or hardware synthesizers.\nThat is, in order to hear something you need a working MIDI synthesizer\nsuch as the sampling based software synthesizer TiMidity.\nYou may run TiMidity and the live-sequencer this way:\n\n> timidity -iA &\n> live-sequencer-gui --connect-to TiMidity Simplesong &\n\nThis should give you an ongoing stream of notes.\nThen change one of the numbers\nthat appear in the lines like\n@qn = 300@\nand press CTRL-R for \\\"reloading\\\" that module into the interpreter.\nThis should immediately have an effect,\nnamely increasing the tempo of the melody.\nYou may also alter a note name like @c 4@ to @cis 4@, then reload,\nthen undo the modification and reload, again, after a while.\nThis is the main idea of changing the song while it is playing.\nThe way the changes are applied warrants\nthat the change takes effect when the time comes.\nMusic is not interrupted and\ndoes not need to be restarted for reacting to changes.\n\nThe overall task performed by the sequencer\nis to lazily evaluate a term called @main@\nthat is a list of events.\nThe value of @main@ is a stream of midi events\n(@On/Off pitch velocity@, @PgmChange@, @Controller@)\nor (@Wait milliseconds@).\nYou may wrap a MIDI event in a @Channel@ constructor\nin order to assign the event to the particular MIDI channel.\nIf you omit this constructor then the event is put to channel 0.\n\nIn each step, the head of the @main@ stream gets reduced\nto head normal form (with @:@ at the top),\nand the first arg of the @:@ gets fully expanded\nand it must be a MIDI event.\n\n2. input language *****\n\nThe used language is syntactically almost a subset of Haskell with\nonly strict pattern matching and\npattern matching only at the definition level (no case),\nno local bindings (no lambda, let, where),\nno types (no type inference, type signatures and type declarations are skipped),\nand with diet syntax (i.e. drastically reduced syntactic sugar,\nlike no layout rule, no do syntax, no list comprehension, no operator sections).\n\nSemantics is similar to lazy evaluation,\nbut we have no sharing.\nThe design goal is that code can be changed\nwhile the program is running.\nThis implies that evaluation of one expression\nmay give different results at different times\n(e.g., during a live performance,\none changes some chords of a musical theme).\nIn turn, this implies that we do not store\nand share results of evaluations,\nhence, we don't have local bindings.\n\nYou may import and use\nthe special functions 'Controls.checkBox', 'Controls.slider'\nfrom the \"Controls\" module.\nFor every call to these functions a widget is added to the control window\nand the state of the widget is the result of the function call.\nTechnically every change of these widgets\ninternally adds or updates a rule in the \"Controls\" module.\nThe effect is very similar to updating a value definition in a module\nand then reloading that module to the interpreter,\nbut using the widgets is more intuitive.\n\n3. Offline rendering *****\n\nIn the library interface of this package\nwe provide the basic Live-Sequencer modules\nin order to allow offline rendering of music\nthat you programmed within the Live-Sequencer.\nYou may generate a standard MIDI file\nusing functions from the \"Render\" module.\nTo this end load your song module into GHCi and call\n\n>YourModule> Render.writeStream \"yoursong.mid\" yourSong\n\n4. HTTP access *****\n\nYou may open a browser and view all modules under\n<http://localhost:8080/>.\nIf the user of the GUI inserts comments like this one:\n\n>----------------\n\n, then it is possible to modify the content below this mark via HTTP.\nThis way multiple people can participate in the composition process.\nThe recommended situation is a room\nwith a data projector and a loudspeaker,\nwhere the conductor explains the functions to the auditory\nand the participants can watch the screen and listen to the music.\n\nYou may choose any other port using the command line option @--http-port@.\nIf you want to use a system port like the standard HTTP port 80,\nwe recommend to configure a firewall to redirect the external port 80\nto the internal user port.\nWe discourage from starting the live-sequencer as root user.\nYou may disable the HTTP server altogether\nby compiling with @cabal install -f-httpServer@.\n\n5. Execution modes *****\n\nThere are three modes of execution\nthat you can choose from the @Execution@ menu:\n\n* Real-time:\nThis is the mode for musical live performances.\nThe interpreter waits according to the @Wait@ elements in the main list.\n\n* Slow motion:\nThis mode is for demonstration and debugging.\nYou can alter the speed using @CTRL-\\<@ and @CTRL-\\>@.\n\n* Single step:\nThis mode is for demonstration, debugging and as a pause mode,\nwhen the interpreter reaches the end of the main list.\nYou can trigger evaluation of the next element using @CTRL-N@.\nYou can perform a single reduction with @CTRL-U@,\nwhich also highlights the rule that will be applied next.\nChanges to the program are only respected\nwhen an element is completely reduced and sent via MIDI.\nUnfortunately it is currently not possible to undo a step.\n\n6. Editing *****\n\nYou can change a module name by altering the module identifier\nbetween the @module@ and @where@ keywords\nand then triggering module reload.\nThe same way you can load new modules\nby adding import lines and reloading the module.\nAlternatively, you may create new modules or close old ones\nusing functions from the @File@ menu.\n\nFor composition it is useful to play parts of the music.\nYou can do this by simply placing the cursor within an identifier\nor by marking an expression\nand then call @Play term@ from the @Execution@ menu.\nThis will make the marked expression the current term\nand start playing.\n\nOnce the music is playing you can change it\nby altering the module and reload it.\nHowever you may find out\nthat you cannot do a certain modification this way.\nIn this case you can mark an expression\nthat denotes a stream transformation function\nand call the @Apply term@ menu item.\nThis will apply the marked function to the current term.\nUseful functions are:\n\n* @merge newTrack@ for adding a new track simultaneously.\nHowever, mind the latency!\n\n* @flip append newTrack@ for appending some events to the current music.\n\n* @dropTime time@ for skipping a part of the music.\nHowever this may skip some @Off@ events and this yields hanging tones.\nAdditionally you may exceed the number of maximally allowed reductions.\n\n* @skipTime time@ for skipping a part of the music.\nThis one only removes or shortens @Wait@ constructors.\nThus all events are played but you risk exceeding the limit\nfor playing many events at once.\n\n* @compressTime acceleration time@ for accelerating the music for a certain time.\nThis should circumvent the problems of @dropTime@ and @skipTime@.\n\n7. Limits *****\n\nWithout some safety belts it would be very easy\nto consume all memory or all processing power\nby accident or by people who contribute malicious code via HTTP.\nThus we have added some limits.\nThese have reasonable default values\nbut you can adjust them to your needs via command line options at startup.\nThese are the limits you can set:\n\n* maximum number of reduction steps per list element:\nWith this limit you can prevent infinite loops.\n\n* term size:\nWith this limit you can prevent memory leaks.\n\n* term depth:\nWith this limit you can prevent unbalanced expression trees.\nUnbalanced trees do not consume more memory than balanced ones,\nbut they consume considerably more graphical space on pretty-printing.\n\n* maximum number of events per time period:\nIf your song is too fast or does not contain any @Wait@ elements at all,\nyour machine will run out of processing power.\nThus you can restrict the number of events\ngenerated in a certain period of time.\nIt is controlled by two options:\n@--event-period@ sets the time period in milliseconds\nwhereas @--max-events-per-period@\nsets the maximum number of events within this time period.\nIn principle you can consider this a ratio\nbut you cannot simply cancel it.\nE.g. both @--event-period=100 --max-events-per-period=15@\nand @--event-period=1000 --max-events-per-period=150@\ndescribe the same ratio,\nthe difference is how liberal is the sequencer\nwith respect to exceeding the ratio for a short time.\nRead the first setting as:\n\\\"For 15 adjacent events,\nthe duration between the first and the last one must be at least 100ms.\\\"\nThat is, if you emit 20 events simultaneously every second,\nthen the first setting will forbid this,\nand the second setting will allow it.\nThus we recommend to first set @--max-events-per-period@\nto the number of events that you want to emit simultaneously\nand then set @--event-period@ large enough\nto match the power of your machine.\n\n8. ALSA *****\n\nUsing the @--new-out-port@ option\nyou may add more ALSA MIDI ports.\nEvery port extends the range of MIDI channels by 16 new logical channels.\nThat is @Channel 40 ev@ sends an event\nto MIDI channel 8 at the second newly added ALSA port\n(because 40 = 2*16+8).\nEvery @--connect-to@ option refers to the latest added port.\nExample:\n\n> live-sequencer --connect-to Synth0 --new-out-port out1 --connect-to Synth1 --new-out-port out2 --connect-to Synth2\n\nYou do not need to connect to any synthesizer at startup.\nYou may connect or disconnect the live-sequencer\nto any synthesizer once it is running\nusing @aconnect@ (command line) or\n@kaconnect@, @alsa-patch-bay@, @patchage@ (graphical interfaces).\n\nThe live-sequencer itself can be controlled to some extent.\nYou may start the live-sequencer this way\n\n> live-sequencer --connect-from YourMidiController\n\nor connect to it once it is running.\nThis enables the following functions:\n\n* If you press a key on your MIDI keyboard named YourMidiController,\nthen the according note name is inserted in the current module.\nHowever, note durations cannot be preserved\nand velocities are ignored, as well.\nThus don't expect that the live-sequencer captures complex songs,\nthis function is just intended as assistance for note input.\n\n* You can control execution of the live-sequencer\nusing MIDI Machine Control SysEx messages.\nSome MIDI controller keyboards have transportation buttons\nthat support those messages.\n\nThe supported MMC commands are:\n\n* RECORD STROBE:\nToggle between receiving and ignoring note input from MIDI keyboard\n\n* PLAY: Restart the interpreter\n\n* STOP: Halt the interpreter and turn sound off\n\n* PAUSE: Toggle between real time and single step mode\n\n* FAST FORWARD: Next element in single step mode";
        buildType = "Simple";
      };
      components = {
        "live-sequencer" = {
          depends  = [
            hsPkgs.non-negative
            hsPkgs.event-list
            hsPkgs.base
          ];
        };
        exes = {
          "live-sequencer" = {
            depends  = [
              hsPkgs.stm-split
              hsPkgs.concurrent-split
              hsPkgs.transformers
              hsPkgs.explicit-exception
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.midi-alsa
              hsPkgs.midi
              hsPkgs.alsa-seq
              hsPkgs.alsa-core
              hsPkgs.data-accessor-transformers
              hsPkgs.data-accessor
              hsPkgs.strict
              hsPkgs.utility-ht
              hsPkgs.non-empty
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
            ];
          };
          "live-sequencer-gui" = {
            depends  = pkgs.lib.optionals _flags.gui [
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.stm
              hsPkgs.concurrent-split
              hsPkgs.transformers
              hsPkgs.explicit-exception
              hsPkgs.parsec
              hsPkgs.pretty
              hsPkgs.midi-alsa
              hsPkgs.midi
              hsPkgs.alsa-seq
              hsPkgs.alsa-core
              hsPkgs.data-accessor-transformers
              hsPkgs.data-accessor
              hsPkgs.strict
              hsPkgs.non-empty
              hsPkgs.utility-ht
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
            ] ++ pkgs.lib.optionals _flags.httpserver [
              hsPkgs.httpd-shed
              hsPkgs.network
              hsPkgs.cgi
              hsPkgs.html
            ];
          };
          "live-mplayer-control" = {
            depends  = pkgs.lib.optionals _flags.mplayer [
              hsPkgs.midi-alsa
              hsPkgs.midi
              hsPkgs.alsa-seq
              hsPkgs.alsa-core
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.base
            ];
          };
        };
      };
    }