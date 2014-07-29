def prettyPrint(obj) {
    println(new JsonBuilder(obj).toPrettyString())
}
