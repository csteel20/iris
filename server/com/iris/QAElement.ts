export class QAElement{
 	_positionX:number = 0;
	_positionY:number = 0;
	_width:number = 0;
	_height:number = 0;
	_hasImage:bool = false;
	_copy:string = "";
	_name:string = "";

	constructor(id:number = null){
		if(id != null){
			this.create(this.fetch(id));
		}
	}
	
	getPositon(){
		return {x:this._positionX, 
				y:this._positionY};
	}
	
	getName(){
		return this._name;
	}
	
	setName(n:string){
		this._name = n;
	}
	
	setPosition(X:number, Y:number){
		this._positionX = X;
		this._positionY = Y;
	}
	
	create(qaObject:Object){
		for (var key in qaObject) {
   			var obj = qaObject[key];
			  this[key] = obj;
		}
	}
	
	destroy(){
		delete this;	
	}
	
	fetch(id:number){
		//TODO ADD GET VIA AJAX ! ! 
		var o:Object = {_width:1, _height:5}; //Test Object
		return o;
	}
	
	update(){
		//TODO
	}
}