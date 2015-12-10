module(unparameterized("Lexical"),[imports([module(unparameterized("Keywords"))])],[exports(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(conc-grammars(lexical-syntax([prod([char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),conc(short("\\r"),numeric("\\12"))))))))],layout,no-attrs),prod([lit("\"/*\""),iter-star(alt(char-class(comp(simple-charclass(present(short("\\*"))))),sort("Asterisk"))),lit("\"*/\"")],sort("Comment"),no-attrs),prod([sort("Comment")],layout,no-attrs),prod([char-class(simple-charclass(present(short("\\*"))))],sort("Asterisk"),no-attrs),prod([lit("\"//\""),iter-star(char-class(comp(simple-charclass(present(short("\\n")))))),char-class(simple-charclass(present(short("\\n"))))],sort("Comment"),no-attrs),prod([],sort("EOF"),no-attrs)]),lexical-restrictions([follow([sort("Asterisk")],single(char-class(simple-charclass(present(short("\\/")))))),follow([sort("EOF")],single(char-class(comp(simple-charclass(absent)))))])),context-free-restrictions([follow([opt(layout)],single(char-class(simple-charclass(present(conc(short("\\ "),conc(short("\\t"),conc(short("\\n"),conc(short("\\r"),numeric("\\12")))))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\/")))))))),follow([opt(layout)],single(seq(simple-charclass(present(short("\\/"))),single(char-class(simple-charclass(present(short("\\*"))))))))])),lexical-syntax([prod([char-class(simple-charclass(present(short("\\,"))))],sort("Comma"),no-attrs),prod([char-class(simple-charclass(present(conc(short("\\+"),short("\\-")))))],sort("Sign"),no-attrs)])),lexical-syntax([prod([alt(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),short("\\_")))))),sort("UniCharName")),iter-star(alt(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(short("\\_"),range(short("0"),short("9")))))))),sort("UniCharName")))],sort("Id"),no-attrs),prod([sort("Keyword")],sort("Id"),attrs([reject]))])),lexical-restrictions([follow([sort("Id")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),conc(range(short("A"),short("Z")),conc(short("\\_"),range(short("0"),short("9"))))))))))])),context-free-syntax([prod([sort("CharConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"CharConst\""))])))])),prod([sort("IntConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"IntConst\""))])))])),prod([sort("OctConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"OctConst\""))])))])),prod([sort("HexConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"HexConst\""))])))])),prod([sort("FloatConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"FloatConst\""))])))])),prod([sort("StringConst")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"StringConst\""))])))]))])),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Constant"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Constant\""))])))]))])),lexical-syntax([prod([sort("NonzeroDigit"),iter-star(sort("Digit")),opt(sort("IntSuffix"))],sort("IntConst"),no-attrs),prod([char-class(simple-charclass(present(short("0")))),opt(sort("IntSuffix"))],sort("IntConst"),no-attrs),prod([sort("UnsignedSuffix"),sort("LongLongSuffix")],sort("IntSuffix"),no-attrs),prod([char-class(simple-charclass(present(conc(short("u"),short("U")))))],sort("UnsignedSuffix"),no-attrs),prod([char-class(simple-charclass(present(conc(short("l"),short("L")))))],sort("LongSuffix"),no-attrs),prod([lit("\"ll\"")],sort("LongLongSuffix"),no-attrs),prod([lit("\"LL\"")],sort("LongLongSuffix"),no-attrs),prod([char-class(simple-charclass(present(range(short("0"),short("9")))))],sort("Digit"),no-attrs),prod([char-class(simple-charclass(present(range(short("1"),short("9")))))],sort("NonzeroDigit"),no-attrs)])),lexical-restrictions([follow([sort("IntConst")],single(char-class(simple-charclass(present(conc(range(short("0"),short("9")),conc(short("u"),conc(short("l"),conc(short("U"),short("L"))))))))))])),lexical-syntax([prod([char-class(simple-charclass(present(short("0")))),iter(sort("OctDigit"))],sort("OctConst"),no-attrs),prod([char-class(simple-charclass(present(range(short("0"),short("7")))))],sort("OctDigit"),no-attrs)])),lexical-restrictions([follow([sort("OctConst")],single(char-class(simple-charclass(present(range(short("0"),short("7")))))))])),lexical-syntax([prod([char-class(simple-charclass(present(short("0")))),sort("HexPrefix"),iter(sort("HexDigit"))],sort("HexConst"),no-attrs),prod([char-class(simple-charclass(present(conc(short("X"),short("x")))))],sort("HexPrefix"),no-attrs),prod([char-class(simple-charclass(present(conc(range(short("0"),short("9")),conc(range(short("a"),short("f")),range(short("A"),short("F")))))))],sort("HexDigit"),no-attrs)])),lexical-restrictions([follow([sort("HexConst")],single(char-class(simple-charclass(present(conc(range(short("0"),short("9")),conc(range(short("a"),short("f")),conc(range(short("A"),short("F")),conc(short("x"),short("X"))))))))))])),lexical-syntax([prod([sort("DecFloatConst")],sort("FloatConst"),no-attrs),prod([sort("HexFloatConst")],sort("FloatConst"),no-attrs),prod([sort("FracConst"),opt(sort("ExpPart")),opt(sort("FloatSuffix"))],sort("DecFloatConst"),no-attrs),prod([iter(sort("Digit")),sort("ExpPart"),opt(sort("FloatSuffix"))],sort("DecFloatConst"),no-attrs),prod([iter-star(sort("Digit")),lit("\".\""),iter(sort("Digit"))],sort("FracConst"),no-attrs),prod([iter(sort("Digit")),lit("\".\"")],sort("FracConst"),no-attrs),prod([char-class(simple-charclass(present(conc(short("e"),short("E"))))),opt(sort("Sign")),iter(sort("Digit"))],sort("ExpPart"),no-attrs),prod([char-class(simple-charclass(present(conc(short("p"),short("P"))))),opt(sort("Sign")),iter(sort("Digit"))],sort("BinExpPart"),no-attrs),prod([sort("HexPrefix"),sort("HexFracConst"),sort("BinExpPart"),opt(sort("FloatSuffix"))],sort("HexFloatConst"),no-attrs),prod([sort("HexPrefix"),iter(sort("HexDigit")),sort("BinExpPart"),opt(sort("FloatSuffix"))],sort("HexFloatConst"),no-attrs),prod([iter-star(sort("HexDigit")),lit("\".\""),iter(sort("HexDigit"))],sort("HexFracConst"),no-attrs),prod([iter(sort("HexDigit")),lit("\".\"")],sort("HexFracConst"),no-attrs),prod([char-class(simple-charclass(present(conc(short("f"),conc(short("l"),conc(short("F"),short("L")))))))],sort("FloatSuffix"),no-attrs)])),lexical-restrictions([follow([sort("FloatConst")],single(char-class(simple-charclass(present(conc(range(short("0"),short("9")),conc(range(short("a"),short("f")),conc(range(short("A"),short("F")),conc(short("x"),conc(short("X"),conc(short("f"),conc(short("l"),conc(short("F"),short("L"))))))))))))))])),lexical-syntax([prod([lit("\"\\\\u\""),sort("HexQuad")],sort("UniCharName"),no-attrs),prod([lit("\"\\\\U\""),sort("HexQuad"),sort("HexQuad")],sort("UniCharName"),no-attrs),prod([sort("HexDigit"),sort("HexDigit"),sort("HexDigit"),sort("HexDigit")],sort("HexQuad"),no-attrs)])),lexical-syntax([prod([char-class(simple-charclass(present(short("\\\\")))),char-class(simple-charclass(present(conc(short("\\'"),conc(short("\\\""),conc(short("\\?"),conc(short("\\\\"),conc(short("a"),conc(short("b"),conc(short("f"),conc(short("n"),conc(short("r"),conc(short("t"),short("v"))))))))))))))],sort("EscSeq"),no-attrs),prod([char-class(simple-charclass(present(short("\\\\")))),sort("OctDigit"),opt(sort("OctDigit")),opt(sort("OctDigit"))],sort("EscSeq"),no-attrs),prod([char-class(simple-charclass(present(short("\\\\")))),sort("HexPrefix"),iter(sort("HexDigit"))],sort("EscSeq"),no-attrs),prod([sort("UniCharName")],sort("EscSeq"),no-attrs)])),lexical-syntax([prod([opt(char-class(simple-charclass(present(conc(short("L"),conc(short("u"),short("U"))))))),lit("\"'\""),iter(sort("Char")),lit("\"'\"")],sort("CharConst"),no-attrs),prod([char-class(comp(simple-charclass(present(conc(short("\\\\"),conc(short("\\'"),short("\\n")))))))],sort("Char"),no-attrs),prod([sort("EscSeq")],sort("Char"),no-attrs)])),lexical-syntax([prod([opt(sort("EncPrefix")),lit("\"\\\"\""),iter-star(sort("SChar")),lit("\"\\\"\"")],sort("StringConst"),no-attrs),prod([lit("\"u8\"")],sort("EncPrefix"),no-attrs),prod([char-class(simple-charclass(present(conc(short("u"),conc(short("U"),short("L"))))))],sort("EncPrefix"),no-attrs),prod([char-class(comp(simple-charclass(present(conc(short("\\\\"),conc(short("\\\""),short("\\n")))))))],sort("SChar"),no-attrs),prod([sort("EscSeq")],sort("SChar"),no-attrs)])))])