=====
expr-001-smoke-test
=====

not true and not false

-----

(nu_script
  (pipeline
    (pipe_element
      (expr_binary
        (expr_unary
          (val_bool))
        (expr_unary
          (val_bool))))))

=====
expr-002-smoke-test
=====

-(4 + 8) == -12

-----

(nu_script
  (pipeline
    (pipe_element
      (expr_binary
        (expr_unary
          (expr_parenthesized)
          (expr_parenthesized
            (pipe_element
              (expr_binary
                (val_number)
                (val_number))))
          (expr_parenthesized))
        (val_number)))))
