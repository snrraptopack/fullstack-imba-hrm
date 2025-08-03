import express from 'express'
import fs from 'fs/promises'
import path from 'path'
import index from "./index.html"
import {hrm} from "./hrm"

const app = new express()

app.get "/api/hello" do(req,res)
	res.json({message:"hello"})
hrm app

