(* Listas com fragmentos de histórias *)
let subjects = ["Um gato"; "Um robô"; "Um alien"; "Um político"]
let verbs = ["invadiu"; "destruiu"; "ajudou"; "escondeu"]
let objects = ["uma fazenda"; "um planeta"; "uma loja de doces"; "uma cidade"]
let contexts = ["porque estava chovendo"; "durante a madrugada"; "por acidente"; "em um sonho"]

(* Função para pegar um elemento aleatório de uma lista *)
let get_random lst =
        let len = List.length lst in
        List.nth lst (Random.int len)

(* Função para gerar uma história *)
let generate_story () =
        let subject = get_random subjects in
        let verb = get_random verbs in
        let object_ = get_random objects in
        let context = get_random contexts in
        Printf.sprintf "%s %s %s %s." subject verb object_ context

(* Gerar e imprimir 5 histórias *)
let () =
        Random.self_init ();
        for _ = 1 to 5 do
                print_endline (generate_story())
        done
