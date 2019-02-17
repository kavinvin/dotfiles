def configure(repl):
    # Ask for confirmation on exit.
    repl.vi_mode = True
    repl.insert_blank_line_after_output = False
    repl.enable_input_validation = True
    repl.show_docstring = True
    repl.highlight_matching_parenthesis = True
    repl.enable_mouse_support = True
    # repl.use_code_colorscheme('fruity')
    # repl.highlight_matching_parenthesis = True
    repl.use_code_colorscheme('monokai')
