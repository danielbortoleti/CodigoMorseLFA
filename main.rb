puts "Por favor, digite o código morse que queira traduzir:  \n"

$valor = " "


def q0(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q1(msg, pos)
    when "-"
        pos += 1
        q15(msg, pos)
    when "/"
        $valor.concat(" ")
        pos += 1
        q0(msg, pos)
    when " "
        pos += 1
        q0(msg, pos)
    when nil
        
    else
        estado = "Erro"
    end
end

def q1(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q2(msg, pos) 
    when "-"
        pos += 1
        q6(msg, pos) 
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        pos += 1
        $valor.concat("e")
        q0(msg, pos)
    when nil
        $valor.concat("e")
        
    else
        estado = "Erro"
    end
end

def q2(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q3(msg, pos) 
    when "-"
        pos += 1
        q12(msg, pos)
    when "/"
      pos += 1
      q3(msg, pos)
    when " "
        pos += 1
        $valor.concat("i")
        q0(msg, pos)
    when nil
        
        $valor.concat("i")
    else
        estado = "Erro"
    end
end

def q3(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q4(msg, pos) 
    when "-"
        pos += 1
        q11(msg, pos) 
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("s")
        pos += 1
        q0(msg, pos)
    when nil
        $valor.concat("s")
        
    else
        estado = "Erro"
    end
end

def q4(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q5(msg, pos)
    when "-"
        pos += 1
        q31(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("h")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("h")
    else
        estado = "Erro"
    end
end

def q5(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("5")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("5")
    else
        estado = "Erro"
    end
end

def q6(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q7(msg, pos) 
    when "-"
        pos += 1
        q9(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("a")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("a")
    else
        estado = "Erro"
    end
end

def q7(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q8(msg, pos)
    when "-"
        pos += 1
        ponte4(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("r")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("r")
    else
        estado = "Erro"
    end
end

def q8(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("l")
        pos += 1
        q0(msg, pos)
    when nil
        $valor.concat("l")
    else
        estado = "Erro"
    end
end

def q9(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q14(msg, pos) 
    when "-"
        pos += 1
        q10(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("w")
        pos += 1
        q0(msg, pos)
    when nil
        $valor.concat("w")
    else
        estado = "Erro"
    end
end

def q10(msg, pos)
    case msg[pos]
    when "-"
      pos += 1
      q29(msg, pos) 
    when "/"
      pos += 1
      q3(msg, pos)
    when " "
      $valor.concat("j")
      pos += 1
      q0(msg, pos)
    when nil
      $valor.concat("j")
    else
        estado = "Erro"
    end
end

def q11(msg, pos)
    case msg[pos]
    when "-"
    pos += 1
    q30(msg, pos) 
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("v")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("v")
    else
        estado = "Erro"
    end
end

def q12(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q13(msg, pos) 
    when "-"
      pos += 1
      ponte3(msg, pos) 
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("u")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("u")
    else
        estado = "Erro"
    end
end

def q13(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("f")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("f")
    else
        estado = "Erro"
    end
end

def q14(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("p")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("p")
    else
        estado = "Erro"
    end
end

def q15(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q20(msg, pos)
    when "-"
        pos += 1
        q16(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("t")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("t")
    else
        estado = "Erro"
    end
end

def q16(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q18(msg, pos)
    when "-"
        pos += 1
        q17(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("m")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("m")
    else
        estado = "Erro"
    end
end

def q17(msg, pos)
    case msg[pos]
      when "."
      pos += 1
      ponte(msg, pos)
     when "-"
      pos += 1
      ponte2(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("o")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("o")
    else
        estado = "Erro"
    end
end

def q18(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q26(msg, pos)
    when "-"
        pos += 1
        q19(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("g")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("g")
    else
        estado = "Erro"
    end
end

def q19(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("q")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("q")
    else
        estado = "Erro"
    end
end

def q20(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q21(msg, pos)
    when "-"
        pos += 1
        q28(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("n")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("n")
    else
        estado = "Erro"
    end
end

def q21(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q27(msg, pos)
    when "-"
        pos += 1
        q24(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("d")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("d")
    else
        estado = "Erro"
    end
end

def q23(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("c")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("c")
    else
        estado = "Erro"
    end
end

def q24(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("x")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("x")
    else
        estado = "Erro"
    end
end

def q25(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("y")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("y")
    else
        estado = "Erro"
    end
end

def q26(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q33(msg, pos)
    when "-"
        pos += 1
        ponte5(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("z")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("z")
    else
        estado = "Erro"
    end
end

def q27(msg, pos)
    case msg[pos]
      when "."
        pos += 1
        q32(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("b")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("b")
    else
        estado = "Erro"
    end
end

def q28(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q23(msg, pos)
    when "-"
        pos += 1
        q25(msg, pos)
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("k")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("k")
    else
        estado = "Erro"
    end

end

def q29(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("1")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("1")
    else
        estado = "Erro"
    end
end

def q30(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("3")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("3")
    else
        estado = "Erro"
    end
end

def q31(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("4")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("4")
    else
        estado = "Erro"
    end
end

def q32(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when "-"
        pos += 1
        q41(msg, pos)
    when " "
        $valor.concat("6")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("6")
    else
        estado = "Erro"
    end
end

def q33(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("7")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("7")
    else
        estado = "Erro"
    end
end

def q34(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("8")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("8")
    else
        estado = "Erro"
    end
end

def ponte(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q34(msg, pos)
    else
        estado = "Erro"
    end
end

def ponte2(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q35(msg, pos)
     when "-"
        pos += 1
        q36(msg, pos)
    else
        estado = "Erro"
    end
end

def ponte3(msg, pos)
    case msg[pos]
    when "-"
        pos += 1
        q37(msg, pos)
    when "."
        pos += 1
        q42(msg, pos)
    else
        estado = "Erro"
    end
end

def ponte4(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q38(msg, pos)
    else
        estado = "Erro"
    end
end

def ponte5(msg, pos)
    case msg[pos]
    when "-"
        pos += 1
        q40(msg, pos)
    else
        estado = "Erro"
    end
end

def q35(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("9")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("9")
    else
        estado = "Erro"
    end
end

def q36(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("0")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("0")
    else
        estado = "Erro"
    end
end

def q37(msg, pos)
    case msg[pos]
    when "/"
        pos += 1
        q3(msg, pos)
    when " "
        $valor.concat("2")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("2")
    else
        estado = "Erro"
    end
end

def q38(msg, pos)
    case msg[pos]
    when "-"
        pos += 1
        q39(msg, pos)
    else
        estado = "Erro"
    end
end

def q39(msg, pos)
    case msg[pos]
    when " "
        $valor.concat(".")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat(".")
    else
        estado = "Erro"
    end
end

def q40(msg, pos)
    case msg[pos]
    when " "
        $valor.concat(",")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat(",")
    else
        estado = "Erro"
    end
end

def q41(msg, pos)
    case msg[pos]
    when " "
        $valor.concat("-")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("-")
    else
        estado = "Erro"
    end
end

def q42(msg, pos)
    case msg[pos]
    when "."
        pos += 1
        q43(msg, pos)
    else
        estado = "Erro"
    end
end

def q43(msg, pos)
    case msg[pos]
    when " "
        $valor.concat("?")
        pos += 1
        q0(msg, pos)
    when nil
        
        $valor.concat("?")
    else
        estado = "Erro"
    end
end

msg = gets.strip.split("")
pos = 0
q0(msg, pos)

puts "Saída, código traduzido: #{$valor}"