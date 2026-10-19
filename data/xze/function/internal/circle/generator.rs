fn main() {
    let particle_count = 256;
    for i in 0..particle_count {
        let x = (((i as f32) / (particle_count as f32)) * 6.283185307).sin();
        let y = (((i as f32) / (particle_count as f32)) * 6.283185307).cos();
        println!("$execute positioned ~ ~ ~ facing ^{} ^{} ^ positioned ^ ^ ^$(radius) run particle $(particle)",x,y);
    }
}